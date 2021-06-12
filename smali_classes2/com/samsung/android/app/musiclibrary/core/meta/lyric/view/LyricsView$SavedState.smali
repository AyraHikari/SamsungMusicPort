.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLayoutState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1264
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1282
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1283
    const-class v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 0

    .line 1277
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1278
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 1262
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1294
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1295
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
