/// A decorator for a XRPClient.
public protocol XRPClientDecorator {
  /// Get the balance for the given address.
  ///
  /// - Parameter address: The X-Address to retrieve the balance for.
  /// - Throws: An error if there was a problem communicating with the XRP Ledger or the inputs were invalid.
  /// - Returns: An unsigned integer containing the balance of the address in drops.
  func getBalance(for address: Address) throws -> UInt64

  /// Retrieve the transaction status for a given transaction hash.
  ///
  /// - Parameter transactionHash: The hash of the transaction.
  /// - Throws: An error if there was a problem communicating with the XRP Ledger.
  /// - Returns: The status of the given transaction.
  func getTransactionStatus(for transactionHash: TransactionHash) throws -> TransactionStatus

  /// Send XRP to a recipient on the XRP Ledger.
  ///
  /// - Parameters:
  ///    - amount: An unsigned integer representing the amount of XRP to send.
  ///    - destinationAddress: The X-Address which will receive the XRP.
  ///    - sourceWallet: The wallet sending the XRP.
  /// - Throws: An error if there was a problem communicating with the XRP Ledger or the inputs were invalid.
  /// - Returns: A transaction hash for the submitted transaction.
  func send(_ amount: UInt64, to destinationAddress: Address, from sourceWallet: Wallet) throws -> TransactionHash

  /// Retrieve the latest validated ledger sequence on the XRP Ledger.
  ///
  /// - Throws: An error if there was a problem communicating with the XRP Ledger.
  /// - Returns: The index of the latest validated ledger.
  func getLatestValidatedLedgerSequence() throws -> UInt32

  /// Retrieve the raw transaction status for the given transaction hash.
  ///
  /// - Parameter transactionHash: The hash of the transaction.
  /// - Throws: An error if there was a problem communicating with the XRP Ledger.
  /// - Returns: The status of the given transaction.
  func getRawTransactionStatus(for transactionHash: TransactionHash) throws -> RawTransactionStatus

  /// Return the history of payments for the given account.
  ///
  /// - Note: This method only works for payment type transactions, see: https://xrpl.org/payment.html
  /// - Note: This method only returns the history that is contained on the remote node, which may not contain a full history of the network.
  ///
  /// - Parameter address: The address to check the existence of.
  /// - Throws: An error if there was a problem communicating with the XRP Ledger.
  /// - Returns: An array of payments associated with the account.
  func paymentHistory(for address: Address) throws -> [XRPTransaction]

  /// Check if an address exists on the XRP Ledger
  ///
  /// - Parameter address: The address to check the existence of.
  /// - Throws: An error if there was a problem communicating with the XRP Ledger.
  /// - Returns: A boolean if the account is on the blockchain.
  func accountExists(for address: Address) throws -> Bool
}
