.class Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistQueryArgsSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "artist"

    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->uri:Landroid/net/Uri;

    .line 132
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->projection:[Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->selection:Ljava/lang/String;

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->selectionArgs:[Ljava/lang/String;

    const-string p1, "artist, title COLLATE LOCALIZED "

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->orderBy:Ljava/lang/String;

    return-void
.end method
