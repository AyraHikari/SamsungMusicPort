.class Landroid/support/v7/preference/SeekBarPreference$SavedState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SeekBarPreference;
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
            "Landroid/support/v7/preference/SeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field max:I

.field min:I

.field seekBarValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 386
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 363
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 373
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 376
    iget p2, p0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget p2, p0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget p2, p0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
