.class public Lcom/samsung/android/app/music/mediaroute/RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->b:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->c:I

    .line 29
    iput-object p4, p0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 4

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    sget-object v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    sget-object v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v3, Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 4

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    const-string v1, "default_id"

    const v2, 0x7f0b0198

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 4

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 52
    sget-object v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    new-instance v3, Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 4

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 44
    sget-object v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance v3, Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static a(Lcom/samsung/android/app/music/mediaroute/RouteInfo;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
