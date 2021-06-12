.class final Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/ActivePlayerController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/ServicePlayerController;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;->INSTANCE:Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/ServicePlayerController;
    .locals 1

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/ServicePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ServicePlayerController;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;->invoke()Lcom/samsung/android/app/music/ServicePlayerController;

    move-result-object v0

    return-object v0
.end method
