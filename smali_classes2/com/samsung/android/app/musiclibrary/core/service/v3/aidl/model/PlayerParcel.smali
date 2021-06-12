.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;


# instance fields
.field private final player:Landroid/os/IBinder;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->tag:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "parcel.readStrongBinder()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->player:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;)V
    .locals 1

    const-string v0, "playerStub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->tag:Ljava/lang/String;

    .line 17
    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->player:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic tag$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPlayer()Landroid/os/IBinder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->player:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->player:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
