.class public Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private presetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;->presetList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPresetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;->presetList:Ljava/util/List;

    return-object v0
.end method

.method public setPresetList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;->presetList:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 19
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPresetInfo;->presetList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
