.class Landroid/support/v7/widget/SeslProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/widget/SeslProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field progress:I

.field secondaryProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2047
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslProgressBar$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2035
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->progress:I

    .line 2037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v7/widget/SeslProgressBar$1;)V
    .locals 0

    .line 2020
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2028
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2042
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2043
    iget p2, p0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    iget p2, p0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
