.class public Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private existYn:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;->existYn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchCheckArtistInfo;->existYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
