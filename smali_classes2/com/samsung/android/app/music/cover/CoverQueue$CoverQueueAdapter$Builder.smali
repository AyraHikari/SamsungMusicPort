.class Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)I
    .locals 0

    .line 281
    iget p0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->a:I

    return p0
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method a(I)Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 291
    iput p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->a:I

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;
    .locals 1

    .line 302
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->b()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->a()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
