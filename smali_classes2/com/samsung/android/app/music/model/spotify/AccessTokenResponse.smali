.class public Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field access_token:Ljava/lang/String;

.field created_date:Ljava/lang/String;

.field expires_in:I

.field id:Ljava/lang/String;

.field resultCode:I

.field scope:Ljava/lang/String;

.field token_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->id:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->resultCode:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->access_token:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->token_type:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->scope:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->created_date:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->expires_in:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->created_date:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->expires_in:I

    return v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->resultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->token_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->scope:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->created_date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget p2, p0, Lcom/samsung/android/app/music/model/spotify/AccessTokenResponse;->expires_in:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
