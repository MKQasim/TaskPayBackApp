//
//  TransactionListPresenter.swift
//  TaskPayBackApp
//
//  Created by KamsQue on 26/01/2023.
//

import UIKit

protocol TransactionListPresentationLogic
{
  func presentFetchedTransactions(response: TransactionList.Transactions.Response)
  func openTrasactionDetails(selectedTransactionItem : Items)
}

class TransactionListPresenter: TransactionListPresentationLogic
{
  let router = TransactionListRouter()
  weak var viewController: TransactionListDisplayLogic?
  
  // MARK: Do something
  
  func presentFetchedTransactions(response: TransactionList.Transactions.Response)
  {
    guard let transactionsList = response.transactionsList else { return  }
    let viewModel = TransactionList.Transactions.ViewModel(transactionsList: transactionsList)
    viewController?.displayFetchedTransactions(viewModel: viewModel)
  }
  
  func openTrasactionDetails(selectedTransactionItem: Items)
  {
//    router.dataStore?.transactionDetailsItem = selectedTransactionItem
//    router.openSwiftUIScreenTransactionDetails(selectedTransactionItem: selectedTransactionItem)
  }
  
}