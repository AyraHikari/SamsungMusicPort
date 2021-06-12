.class final Lcom/samsung/android/sdk/bixby/data/ScreenParameter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/data/ScreenParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/bixby/data/ScreenParameter;
    .locals 1

    .line 129
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/sdk/bixby/data/ScreenParameter;
    .locals 0

    .line 134
    new-array p1, p1, [Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter$1;->a(I)[Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    move-result-object p1

    return-object p1
.end method
