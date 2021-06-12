.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "Empty"

    const-string v4, "getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    return-object p1
.end method

.method public final getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->access$getEmpty$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
    .locals 0

    .line 68
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;->newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    return-object p1
.end method
