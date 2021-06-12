.class final Landroid/support/v7/preference/Preference$BaseSavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/Preference$BaseSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v7/preference/Preference$BaseSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/preference/Preference$BaseSavedState;
    .locals 1

    .line 2200
    new-instance v0, Landroid/support/v7/preference/Preference$BaseSavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2197
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/preference/Preference$BaseSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v7/preference/Preference$BaseSavedState;
    .locals 0

    .line 2205
    new-array p1, p1, [Landroid/support/v7/preference/Preference$BaseSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2197
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState$1;->newArray(I)[Landroid/support/v7/preference/Preference$BaseSavedState;

    move-result-object p1

    return-object p1
.end method
