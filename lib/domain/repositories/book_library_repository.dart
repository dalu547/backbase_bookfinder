import 'package:dartz/dartz.dart';
import 'package:bookfinder/core/network/response_error.dart';
import 'package:bookfinder/domain/entities/book_details_entity.dart';
import 'package:bookfinder/domain/entities/book_entity.dart';

abstract class BookLibraryRepository {
  /// Remote: Fetch list of books based on query.
  Future<Either<ResponseError, List<BookEntity>>> searchBooks(
    String query,
    String fields,
    int page,
    int limit,
  );

  /// Remote: Fetch detailed information about a book.
  Future<Either<ResponseError, BookDetailEntity>> fetchBookDetails(
    String olid,
  );

  /// Local: Save book details to local DB.
  Future<void> insertBookDetailsToDB(BookDetailEntity bookDetails);

  /// Local: Retrieve book details from local DB.
  Future<BookDetailEntity?> getBookDetailsFromDB(String olid);
}
