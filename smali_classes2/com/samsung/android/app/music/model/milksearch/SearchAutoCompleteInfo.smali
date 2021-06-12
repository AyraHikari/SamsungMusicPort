.class public Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field autoCompleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->autoCompleteList:Ljava/util/List;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->autoCompleteList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAutoCompleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->autoCompleteList:Ljava/util/List;

    return-object v0
.end method

.method public setAutoCompleteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->autoCompleteList:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 20
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->autoCompleteList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
