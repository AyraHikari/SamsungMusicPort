.class public Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 10
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "provider_id"

    const-string v2, "provider_name"

    const-string v3, "album_art"

    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->selection:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v0, "provider_name COLLATE LOCALIZED "

    .line 16
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
