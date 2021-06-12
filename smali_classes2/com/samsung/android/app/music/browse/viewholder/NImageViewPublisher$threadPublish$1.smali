.class final Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher$threadPublish$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher$threadPublish$1;->a:Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher$threadPublish$1;->a:Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a(Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;)V

    return-void
.end method
