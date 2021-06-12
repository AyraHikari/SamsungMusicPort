.class public Lcom/samsung/android/app/music/model/milksearch/SearchPreset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;,
        Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_PRESET:Ljava/lang/String; = "2"

.field public static final TYPE_PREWRITTEN:Ljava/lang/String; = "1"


# instance fields
.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "contentType"
    .end annotation
.end field

.field private presetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "presetId"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->contentType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->presetId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->access$000(Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->access$100(Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 114
    instance-of v0, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 122
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPresetId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->presetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public isPreWritten()Z
    .locals 2

    const-string v0, "1"

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPreset()Z
    .locals 2

    const-string v0, "2"

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->presetId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
