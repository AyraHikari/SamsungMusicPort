.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title != \'\' AND is_music=1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->projection:[Ljava/lang/String;

    .line 18
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selection:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 24
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
