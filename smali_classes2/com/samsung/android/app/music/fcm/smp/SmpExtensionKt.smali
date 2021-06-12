.class public final Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

.field private static final b:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_USER_BASED_OPT_IN:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    sput-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;->a:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    .line 7
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_DEBUG_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    sput-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;->b:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    return-void
.end method

.method public static final a()Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;->a:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    return-object v0
.end method

.method public static final b()Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;->b:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    return-object v0
.end method
