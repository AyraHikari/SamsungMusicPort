.class public Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation
.end field

.field categoryGenreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation
.end field

.field contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;",
            ">;"
        }
    .end annotation
.end field

.field displayGroup:Ljava/lang/String;

.field displayId:Ljava/lang/String;

.field displayOrder:I

.field displayTitle:Ljava/lang/String;

.field displayType:Ljava/lang/String;

.field displayUpdDate:Ljava/lang/String;

.field private mGroupType:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field private mUpdateDate:Ljava/util/Date;

.field moreTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayOrder:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainCategoryGenre;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 94
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBannerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryGenreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    return-object v0
.end method

.method public getContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayGroup()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayUpdDate()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->mGroupType:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object v0
.end method

.method public getMoreTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayOrder:I

    return v0
.end method

.method public getUpdateDate()Ljava/util/Date;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->mUpdateDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 99
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBannerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    return-void
.end method

.method public setCategoryGenreList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainCategoryGenre;",
            ">;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    return-void
.end method

.method public setContentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    return-void
.end method

.method public setDisplayGroup(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    return-void
.end method

.method public setDisplayUpdDate(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->mGroupType:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-void
.end method

.method public setMoreTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;",
            ">;)V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayOrder:I

    return-void
.end method

.method public setUpdateDate(Ljava/util/Date;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->mUpdateDate:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayGroup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->displayUpdDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->bannerList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 70
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->moreTypeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 71
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->contentList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 72
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainGroup;->categoryGenreList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
