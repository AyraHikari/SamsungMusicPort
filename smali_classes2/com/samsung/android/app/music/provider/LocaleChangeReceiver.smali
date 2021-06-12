.class final Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->a:Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->a:Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$Companion;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MusicLocaleChangeThread"

    const/4 v4, 0x0

    .line 137
    new-instance p2, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver$onReceive$1;-><init>(Landroid/content/Context;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lkotlin/concurrent/ThreadsKt;->a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void

    .line 132
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/provider/LocaleChangeReceiver;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", intent : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
