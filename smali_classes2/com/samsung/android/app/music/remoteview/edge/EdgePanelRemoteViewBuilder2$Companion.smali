.class public final Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
