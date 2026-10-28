<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">

        <html>
        <head>
            <title>BookHive - Book Catalogue</title>
            <link rel="stylesheet" href="books.css"/>
        </head>

        <body>

            <div class="container">

                <h1>BookHive</h1>
                <p class="subtitle">Our Book Collection</p>

                <table>

                    <tr>
                        <th>Book Title</th>
                        <th>Author Name</th>
                        <th>ISBN Number</th>
                        <th>Publisher</th>
                        <th>Edition</th>
                        <th>Price</th>
                    </tr>

                    <xsl:for-each select="bookStore/book">

                        <tr>
                            <td class="book-title">
                                <xsl:value-of select="title"/>
                            </td>

                            <td class="author">
                                <xsl:value-of select="author"/>
                            </td>

                            <td class="isbn">
                                <xsl:value-of select="isbn"/>
                            </td>

                            <td class="publisher">
                                <xsl:value-of select="publisher"/>
                            </td>

                            <td class="edition">
                                <xsl:value-of select="edition"/>
                            </td>

                            <td class="price">
                                <xsl:text>₹</xsl:text>
                                <xsl:value-of select="price"/>
                            </td>
                        </tr>

                    </xsl:for-each>

                </table>

                <p class="footer">
                    © 2026 BookHive | VIT-AP University
                </p>

            </div>

        </body>
        </html>

    </xsl:template>

</xsl:stylesheet>