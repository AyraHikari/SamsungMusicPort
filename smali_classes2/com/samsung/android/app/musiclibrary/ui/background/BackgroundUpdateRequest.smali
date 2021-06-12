.class public final Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:J

.field public final d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;-><init>(Landroid/net/Uri;JI)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;-><init>(Landroid/net/Uri;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JI)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    .line 52
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    .line 53
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->d:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->d:I

    return-void
.end method

.method private static a(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 94
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 104
    invoke-virtual {p0, v2, p1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    .line 88
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    iget-wide v4, p1, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurRequest{requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", baseUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->e:Ljava/lang/String;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 129
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
