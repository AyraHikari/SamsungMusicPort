.class final Landroid/support/v4/widget/SlidingPaneLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/v4/widget/SlidingPaneLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    .locals 2

    .line 1466
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    .locals 1

    .line 1461
    new-instance p2, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1458
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1458
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    .locals 0

    .line 1471
    new-array p1, p1, [Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1458
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState$1;->newArray(I)[Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
