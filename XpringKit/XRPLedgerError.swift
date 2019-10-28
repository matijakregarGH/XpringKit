/// Errors that may occur when interacting with the XRP Ledger.
public enum XRPLedgerError: Error {
	/// A problem occurred while performing the cryptographic signing process.
	case signingError

  case invalidAddress(String)
  case invalidInputs(String)
  case unknown(String)
}
