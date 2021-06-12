.class public Lcom/samsung/android/app/music/model/milkevent/EventWebList;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkevent/EventWebList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventWeb;",
            ">;"
        }
    .end annotation
.end field

.field private moreYn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/model/milkevent/EventWebList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkevent/EventWebList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->eventList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->moreYn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventWebList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventWeb;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->eventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMore()Z
    .locals 2

    const-string v0, "Y"

    .line 41
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->eventList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 25
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->moreYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
