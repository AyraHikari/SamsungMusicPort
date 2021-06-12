.class Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->onServiceResult(IIILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:[Ljava/lang/Object;

.field final synthetic g:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->g:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->a:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->b:I

    iput p4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->c:I

    iput p5, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->d:I

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->e:Ljava/lang/Object;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->f:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->a:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->b:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->c:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->d:I

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->e:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->f:[Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
