.class final Landroid/support/v4/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/v4/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/view/AbsSavedState;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;
    .locals 0

    .line 90
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 94
    sget-object p1, Landroid/support/v4/view/AbsSavedState;->EMPTY_STATE:Landroid/support/v4/view/AbsSavedState;

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v4/view/AbsSavedState;
    .locals 0

    .line 104
    new-array p1, p1, [Landroid/support/v4/view/AbsSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/view/AbsSavedState$2;->newArray(I)[Landroid/support/v4/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method
