import pandas as pd
import random

def recommend(name):
	print("something")
	df = pd.read_csv('./goodbooks-10k/ratings.csv').set_index('book_id')
	df = df.sort_values('user_id')
	df2 = pd.read_csv('./goodbooks-10k/books1000.csv')

	ratingList = pd.merge(df,df2, on='book_id').set_index('book_id')

	ratings_mean_count = pd.DataFrame(ratingList.groupby('original_title')['rating'].mean())
	ratings_mean_count['rating_counts'] = pd.DataFrame(ratingList.groupby('original_title')['rating'].count())

	user_book_rating = ratingList.pivot_table(index='user_id', columns='original_title', values='rating')

	b = str(input('Enter book: ')
	if b in user_book_rating:
		book_ratings = user_book_rating[b]
		print(list(book_ratings))
		books_like_b = user_book_rating.corrwith(book_ratings)

		corr_b = pd.DataFrame(books_like_b, columns=['Correlation'])
		corr_b.dropna(inplace=True)

		corr_b = corr_b.join(ratings_mean_count['rating_counts'])

		print(corr_b[corr_b ['rating_counts']>50].sort_values('Correlation', ascending=False).head())

recommend("About a Boy")