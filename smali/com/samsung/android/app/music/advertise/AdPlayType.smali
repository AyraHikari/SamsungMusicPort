.class public final enum Lcom/samsung/android/app/music/advertise/AdPlayType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/advertise/AdPlayType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/advertise/AdPlayType;

.field public static final enum AD:Lcom/samsung/android/app/music/advertise/AdPlayType;

.field public static final enum AI:Lcom/samsung/android/app/music/advertise/AdPlayType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/advertise/AdPlayType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GUIDE:Lcom/samsung/android/app/music/advertise/AdPlayType;

.field public static final enum PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

.field public static final enum SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    const-string v1, "SONG"

    const-string v2, "Song"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    const-string v1, "AD"

    const-string v2, "AD"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    const-string v1, "AI"

    const-string v2, "AI"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/advertise/AdPlayType;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    const-string v1, "GUIDE"

    const-string v2, "GUIDE"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->GUIDE:Lcom/samsung/android/app/music/advertise/AdPlayType;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    const-string v1, "PREAD"

    const-string v2, "PREAD"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [Lcom/samsung/android/app/music/advertise/AdPlayType;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/advertise/AdPlayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->GUIDE:Lcom/samsung/android/app/music/advertise/AdPlayType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->$VALUES:[Lcom/samsung/android/app/music/advertise/AdPlayType;

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdPlayType$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/advertise/AdPlayType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/samsung/android/app/music/advertise/AdPlayType;->value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 5

    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdPlayType;->values()[Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    invoke-virtual {v3}, Lcom/samsung/android/app/music/advertise/AdPlayType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 1

    .line 9
    const-class v0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->$VALUES:[Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/advertise/AdPlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPlayType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 20
    iget-object p2, p0, Lcom/samsung/android/app/music/advertise/AdPlayType;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
