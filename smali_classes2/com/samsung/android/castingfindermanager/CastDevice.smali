.class public Lcom/samsung/android/castingfindermanager/CastDevice;
.super Lcom/samsung/android/castingfindermanager/Device;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/castingfindermanager/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/castingfindermanager/CastDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/castingfindermanager/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/Device;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->c:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->d:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->e:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/Device;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->f:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->a:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->b:Ljava/lang/String;

    .line 22
    iput p5, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->c:I

    .line 23
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->d:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->e:Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->e:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CastDevice"

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NameNotFoundException"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/samsung/android/oneconnect/external/Device;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/external/Device;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/external/Device;->c()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->c:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/castingfindermanager/Device;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastDevice;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
