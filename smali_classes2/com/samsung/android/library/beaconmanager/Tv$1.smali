.class final Lcom/samsung/android/library/beaconmanager/Tv$1;
.super Ljava/lang/Object;
.source "Tv.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/Tv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/library/beaconmanager/Tv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/library/beaconmanager/Tv;
    .locals 2

    .line 2
    new-instance v0, Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-direct {v0}, Lcom/samsung/android/library/beaconmanager/Tv;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->setDevType(I)Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$002(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$102(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$202(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$302(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$402(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$502(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$602(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$702(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$802(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$902(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1002(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1102(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1202(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1302(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1402(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1502(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1602(Lcom/samsung/android/library/beaconmanager/Tv;I)I

    .line 21
    sget-boolean v1, Lcom/samsung/android/library/beaconmanager/Tv;->mUseVersion1Data:Z

    if-nez v1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/library/beaconmanager/Tv;->access$1702(Lcom/samsung/android/library/beaconmanager/Tv;B)B

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/Tv$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/library/beaconmanager/Tv;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/library/beaconmanager/Tv;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/samsung/android/library/beaconmanager/Tv;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/Tv$1;->newArray(I)[Lcom/samsung/android/library/beaconmanager/Tv;

    move-result-object p1

    return-object p1
.end method
