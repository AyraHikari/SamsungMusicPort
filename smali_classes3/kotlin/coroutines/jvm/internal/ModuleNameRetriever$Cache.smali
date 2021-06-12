.class final Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->c:Ljava/lang/reflect/Method;

    return-void
.end method
