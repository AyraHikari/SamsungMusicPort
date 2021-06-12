.class public Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field displayGroup:Ljava/lang/String;

.field displayId:Ljava/lang/String;

.field displayOrder:I

.field displayTitle:Ljava/lang/String;

.field displayType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayOrder:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

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

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDisplayGroup()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayOrder:I

    return v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDisplayGroup(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayOrder:I

    return-void
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayGroup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMoreType;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
