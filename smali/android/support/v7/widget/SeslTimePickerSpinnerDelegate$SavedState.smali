.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
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
            "Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 764
    new-instance v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 743
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;)V
    .locals 0

    .line 732
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 738
    iput p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    .line 739
    iput p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;)V
    .locals 0

    .line 732
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .line 749
    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 753
    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 758
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 759
    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
