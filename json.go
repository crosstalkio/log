package log

import "encoding/json"

func JSON(writer Writer) Writer {
	return func(lv Level, v interface{}) {
		switch v := v.(type) {
		case string, json.RawMessage:
			writer(lv, v)
		}
		data, err := json.Marshal(v)
		if err == nil {
			writer(lv, data)
		} else {
			writer(lv, v)
		}
	}
}
