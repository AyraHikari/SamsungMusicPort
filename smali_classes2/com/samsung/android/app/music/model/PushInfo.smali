.class public Lcom/samsung/android/app/music/model/PushInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/PushInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUSH_TYPE_FCM:Ljava/lang/String; = "0"

.field public static final PUSH_TYPE_GCM:Ljava/lang/String; = "1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private pushToken:Ljava/lang/String;

.field private pushType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/model/PushInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/PushInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/PushInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 14
    iput-object v0, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushType:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushToken:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 14
    iput-object v0, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushType:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushToken:Ljava/lang/String;

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/model/PushInfo;->pushType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
