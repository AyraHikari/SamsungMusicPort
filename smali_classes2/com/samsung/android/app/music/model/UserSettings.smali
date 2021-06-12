.class public Lcom/samsung/android/app/music/model/UserSettings;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/UserSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private autoRotateYn:Ljava/lang/String;

.field private explicit:Ljava/lang/String;

.field private genreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myLocation:Ljava/lang/String;

.field private pushNotification:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/model/UserSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/UserSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/UserSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    const-class v0, Lcom/samsung/android/app/music/model/UserSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/model/UserSettings;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->genreList:Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->explicit:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->myLocation:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->pushNotification:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserSettings;->autoRotateYn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoRotateYn()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->autoRotateYn:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->explicit:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->genreList:Ljava/util/List;

    return-object v0
.end method

.method public getMyLocation()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->myLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPushNotification()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserSettings;->pushNotification:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserSettings;->genreList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 46
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserSettings;->explicit:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserSettings;->myLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserSettings;->pushNotification:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserSettings;->autoRotateYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
