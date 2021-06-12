.class public Lcom/samsung/android/app/music/model/CheckCountryInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/CheckCountryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected countryCode:Ljava/lang/String;

.field private mExtraHttpServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "http_ext_server"
    .end annotation
.end field

.field private mHttpProxyServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "http_proxy_server"
    .end annotation
.end field

.field private mModHttpServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "mod_http_server"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/model/CheckCountryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/CheckCountryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraHttpServer()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->mExtraHttpServer:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxyServer()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->mHttpProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getModHttpServer()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->mModHttpServer:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setHttpProxyServer(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->mHttpProxyServer:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/model/CheckCountryInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
