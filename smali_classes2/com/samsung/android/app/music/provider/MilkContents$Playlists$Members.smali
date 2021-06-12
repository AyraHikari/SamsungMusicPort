.class public Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;
.super Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents$Playlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Members"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Landroid/net/Uri;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
