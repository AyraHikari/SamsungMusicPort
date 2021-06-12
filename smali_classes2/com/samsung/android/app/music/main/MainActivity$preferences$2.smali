.class final Lcom/samsung/android/app/music/main/MainActivity$preferences$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$preferences$2;->this$0:Lcom/samsung/android/app/music/main/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity$preferences$2;->this$0:Lcom/samsung/android/app/music/main/MainActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity$preferences$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
