.class public abstract Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->b:Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->c:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->d:Ljava/lang/String;

    const p1, 0x7f100087

    .line 178
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->setThumbnailSize(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->c:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;

    return-object p1
.end method
