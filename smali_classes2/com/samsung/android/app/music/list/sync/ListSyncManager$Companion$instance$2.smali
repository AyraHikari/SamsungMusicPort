.class final Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/sync/ListSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/list/sync/ListSyncManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;->INSTANCE:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/list/sync/ListSyncManager;
    .locals 2

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;->invoke()Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-result-object v0

    return-object v0
.end method
