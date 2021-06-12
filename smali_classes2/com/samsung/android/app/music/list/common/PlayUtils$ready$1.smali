.class public final Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/PlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 290
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v0, "serviceMetaReceiver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
