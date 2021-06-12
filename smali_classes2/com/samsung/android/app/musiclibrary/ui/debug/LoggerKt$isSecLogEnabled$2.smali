.class final Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    const-string v0, "1"

    const-string v1, "persist.log.seclevel"

    const-string v2, "0"

    .line 17
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
