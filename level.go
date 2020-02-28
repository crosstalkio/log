package log

import "strings"

type Level int

const (
	Debug = iota
	Info
	Warning
	Error
	Fatal
)

func (lv Level) Tag() string {
	switch lv {
	case Debug:
		return "D"
	case Info:
		return "I"
	case Warning:
		return "W"
	case Error:
		return "E"
	case Fatal:
		return "F"
	}
	return "?"
}

func ParseLevel(str string, preset Level) Level {
	str = strings.ToLower(str)
	switch str {
	case "0", "d", "debug":
		return Debug
	case "1", "i", "info":
		return Info
	case "2", "w", "warning", "warn":
		return Warning
	case "3", "e", "error":
		return Error
	case "4", "f", "fatal":
		return Fatal
	default:
		return preset
	}
}
