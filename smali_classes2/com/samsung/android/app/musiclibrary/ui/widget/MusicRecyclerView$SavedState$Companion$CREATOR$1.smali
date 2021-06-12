.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    .locals 0

    .line 852
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 842
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion$CREATOR$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion$CREATOR$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 842
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion$CREATOR$1;->a(I)[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method
