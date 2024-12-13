<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Report</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #f8effc, #ffe4e6); /* Gradient background */
            margin: 0;
            padding: 20px;
            color: #3a2d41; /* Deep purple text */
        }

        /* Movie Container Styling */
        .movie-container {
            background-color: #fff3f9; /* Light pink */
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
            transition: transform 0.2s ease-in-out;
        }
        .movie-container:hover {
            transform: scale(1.02);
        }

        /* Header */
        h2 {
            color: #a0415d; /* Rosewood color */
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Movie Title Styling */
        .movie-title {
            font-size: 22px;
            font-weight: bold;
            color: #772c4d; /* Maroon */
            margin-bottom: 15px;
            border-bottom: 2px solid #ffc1d6;
            padding-bottom: 5px;
        }

        /* Group Styling for Details and Actions */
        .details-actions-group {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 20px;
        }

        /* Movie Details Styling */
        .movie-details, .show-details {
            background: #fffafc; /* Subtle white background */
            padding: 15px;
            border-radius: 10px;
            border: 1px solid #ffe1eb;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        .movie-details strong, .show-details strong {
            color: #8c3c57; /* Deep pink */
        }

        /* Show Details Styling */
        .show-details {
            margin-top: 10px;
        }

        /* Action Links Styling */
        .action-links {
            display: flex;
            flex-direction: column;
            align-items: stretch;
            gap: 10px;
        }

        .action-links a {
            text-decoration: none;
            color: #ffffff;
            background-color: #c85673; /* Warm pink */
            padding: 12px;
            border-radius: 8px;
            font-weight: bold;
            font-size: 14px;
            text-align: center;
            transition: background-color 0.3s, transform 0.2s;
        }

        .action-links a:hover {
            background-color: #a73e5d; /* Deeper pink */
            transform: translateY(-3px);
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            .details-actions-group {
                grid-template-columns: 1fr;
            }

            .movie-details, .show-details, .action-links {
                flex: unset;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Movie Report</h2>
    <c:forEach var="movie" items="${movieList}">
        <div class="movie-container">
            <!-- Movie Title -->
            <div class="movie-title">
                ${movie.movieName} (Movie ID: ${movie.movieId})
            </div>

            <!-- Group for Movie Details, Show Details, and Actions -->
            <div class="details-actions-group">
                <!-- Movie Details -->
                <div class="movie-details">
                    <strong>Language:</strong> ${movie.language}<br>
                    <strong>Genre:</strong> ${movie.genre}<br>
                    <strong>Duration:</strong> ${movie.duration}<br>
                    <strong>Rating:</strong> ${movie.rating}
                </div>

                <!-- Show Details -->
                <div class="show-details">
                    <c:forEach var="show" items="${movieMap[movie.movieId]}">
                        <div>
                            <strong>Show Time:</strong> ${show.showTimeName}<br>
                            <strong>Royal Seat:</strong> ${show.royalSeat}<br>
                            <strong>Royal Booked:</strong> ${show.royalBooked}<br>
                            <strong>Premier Seat:</strong> ${show.premierSeat}<br>
                            <strong>Premier Booked:</strong> ${show.premierBooked}
                        </div>
                    </c:forEach>
                </div>

                <!-- Action Links -->
                <div class="action-links">
                    <a href="${pageContext.request.contextPath}/updateMovieShow/${movie.movieId}">Show Time Update</a>
                    <a href="${pageContext.request.contextPath}/movieUpdate/${movie.movieId}">Movie Update</a>
                    <a href="${pageContext.request.contextPath}/movieDeletion/${movie.movieId}">Movie Deletion</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
