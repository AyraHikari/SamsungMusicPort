.class public Lcom/samsung/android/app/music/model/milkevent/EventWeb;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkevent/EventWeb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private eventTitle:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private regDate:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/samsung/android/app/music/model/milkevent/EventWeb$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkevent/EventWeb$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->count:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    .line 52
    iput-object p10, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->count:Ljava/lang/String;

    return-void
.end method

.method public static createEventInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/milkevent/EventWeb;
    .locals 12

    .line 36
    new-instance v11, Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/model/milkevent/EventWeb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTitle()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->eventTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->regDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->startDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->endDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->summary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->count:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
