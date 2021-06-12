.class public final Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/database/ContentObserver;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 163
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 166
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_1

    .line 169
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "@"

    .line 175
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrowseGenreUtils"

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringSelectedGenreIds genreText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;"
        }
    .end annotation

    const-string v0, "key_browse_default_genres"

    const/4 v1, 0x0

    .line 127
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$2;

    invoke-direct {v1}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$2;-><init>()V

    .line 130
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$2;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 129
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 132
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key_browse_default_genres"

    .line 122
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 145
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 199
    :goto_1
    sput-object p1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    const-string v1, "BrowseGenreUtils"

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveGenreOrders. changed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", genreIds - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v1, "key_browse_genre_orders"

    .line 202
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/GenreBaseModel;

    .line 156
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/GenreBaseModel;

    .line 240
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string p1, "key_browse_genres"

    .line 249
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b(Landroid/content/Context;Ljava/util/List;)Z

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;"
        }
    .end annotation

    const-string v0, "key_browse_genres"

    const/4 v1, 0x0

    .line 214
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 217
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$4;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$4;-><init>()V

    .line 219
    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$4;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 218
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 220
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/GenreBaseModel;

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static e(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_browse_genre_orders"

    const/4 v2, 0x0

    .line 257
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$5;

    invoke-direct {v2}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$5;-><init>()V

    .line 261
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$5;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 260
    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 262
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_1
    sput-object v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    .line 266
    :cond_2
    sget-object p0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c:Ljava/util/List;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 270
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3ef

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 273
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/GenreBaseModel;

    .line 274
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 275
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 276
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0xc8

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 277
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 279
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static declared-synchronized g(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p0, 0x0

    .line 91
    sput-object p0, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b:Landroid/database/ContentObserver;

    const-string p0, "BrowseGenreUtils"

    const-string v1, "updateContentObserver. listener empty. so unregistered."

    .line 92
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    const-string v1, "BrowseGenreUtils"

    const-string v2, "updateContentObserver. initialize observer."

    .line 96
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b:Landroid/database/ContentObserver;

    const-string v1, "key_browse_genre_orders"

    const/4 v2, 0x2

    .line 110
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    throw p0
.end method
