.class public Landroid/support/v4/widget/DrawerLayout$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2069
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$SavedState$1;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2047
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x0

    .line 2040
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2050
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2056
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2040
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2061
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2062
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2064
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2065
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2066
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
