.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;)V
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
.field public static final INSTANCE:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;->INSTANCE:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;

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

    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isHdmiConnected$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 658
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isHdmiConnected()Z

    move-result v0

    return v0
.end method
