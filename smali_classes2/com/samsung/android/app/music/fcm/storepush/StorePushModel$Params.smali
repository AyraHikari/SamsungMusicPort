.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deeplink:Ljava/lang/String;

.field private expandMessage:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private largeIcon:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private weblink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->title:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->message:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->expandMessage:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->deeplink:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->weblink:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->image:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->largeIcon:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$000(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->title:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$100(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->message:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$200(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->expandMessage:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$300(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->deeplink:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$400(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->weblink:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$500(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->image:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->access$600(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->largeIcon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandMessage()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->expandMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIcon()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->largeIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblink()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->weblink:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expandMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->expandMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deeplink : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->deeplink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", largeIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->expandMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->deeplink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->weblink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->largeIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
