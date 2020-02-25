import {useState} from 'react'

export default () => {
  const [history, setHistory] = useState(null)

  const pushToHistory = (newUrl) => {
    setHistory([...history, newUrl])
  }

  // Set history to new history object
  const updateHistory = (historyUrls) => {
    setHistory(historyUrls)
  }

  return {
    history,
    updateHistory,
    pushToHistory,
  }
}