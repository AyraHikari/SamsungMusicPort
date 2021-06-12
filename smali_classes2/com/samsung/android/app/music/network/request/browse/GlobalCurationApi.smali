.class public Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->b(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)V
    .locals 3

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object v0

    const-string v1, "NEWRELEASE"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GlobalCurationApi"

    const-string v1, "NEWRELEASE DB time == Server time"

    .line 118
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object v0

    const-string v1, "NEWRELEASE"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;->fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setNewrelease(Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;)V

    const-string v0, "GlobalCurationApi"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEWRELEASE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "GlobalCurationApi"

    const-string v1, "NEWRELEASE DB time != Server time"

    .line 123
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object v0

    const-string v1, "NEWRELEASE"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;->upsetDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object v0

    const-string v1, "SPOTLIGHT"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GlobalCurationApi"

    const-string v1, "SPOTLIGHT DB time == Server time"

    .line 128
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object v0

    const-string v1, "SPOTLIGHT"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;->fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setSpotlight(Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;)V

    const-string v0, "GlobalCurationApi"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPOTLIGHT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "GlobalCurationApi"

    const-string v1, "SPOTLIGHT DB time != Server time"

    .line 133
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object v0

    const-string v1, "SPOTLIGHT"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;->upsetDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    const-string v1, "THEME"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GlobalCurationApi"

    const-string v1, "THEME DB time == Server time"

    .line 138
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    const-string v1, "THEME"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setTheme(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)V

    const-string v0, "GlobalCurationApi"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THEME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "GlobalCurationApi"

    const-string v1, "THEME DB time != Server time"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    const-string v1, "THEME"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->upsetDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    const-string v1, "HOTARTIST"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GlobalCurationApi"

    const-string v1, "HOTARTIST DB time == Server time"

    .line 147
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    const-string v1, "HOTARTIST"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setHotartist(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)V

    const-string v0, "GlobalCurationApi"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HOTARTIST : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "GlobalCurationApi"

    const-string v1, "HOTARTIST DB time != Server time"

    .line 152
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v0

    const-string v1, "HOTARTIST"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->upsetDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object v0

    const-string v1, "GENRE"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GlobalCurationApi"

    const-string v1, "GENRE DB time == Server time"

    .line 157
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object v0

    const-string v1, "GENRE"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;->fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setGenre(Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;)V

    const-string v0, "GlobalCurationApi"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GENRE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v0, "GlobalCurationApi"

    const-string v1, "GENRE DB time != Server time"

    .line 161
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object v0

    const-string v1, "GENRE"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;->upsetDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    :goto_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GlobalCurationApi"

    const-string v1, "YEAR DB time == Server time"

    .line 166
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setYear(Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;)V

    const-string p0, "GlobalCurationApi"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YEAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v0, "GlobalCurationApi"

    const-string v1, "YEAR DB time != Server time"

    .line 170
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object p1

    const-string v0, "YEAR"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->upsetDB(Landroid/content/Context;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "GlobalCurationApi"

    const-string v1, "getMeuns"

    .line 81
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPCHART"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2017-06-25 10:23:45"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NEWRELEASE"

    .line 89
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NEWRELEASE"

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v1, "2017-06-25 10:23:45"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SPOTLIGHT"

    .line 93
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPOTLIGHT"

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v1, "2017-06-25 10:23:45"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "THEME"

    .line 97
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "THEME"

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v1, "2017-06-25 10:23:45"

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HOTARTIST"

    .line 101
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOTARTIST"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v1, "2017-06-25 10:23:45"

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GENRE"

    .line 105
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GENRE"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const-string v1, "2017-06-25 10:23:45"

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "YEAR"

    .line 109
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "YEAR"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_5

    const-string p0, "2017-06-25 10:23:45"

    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
