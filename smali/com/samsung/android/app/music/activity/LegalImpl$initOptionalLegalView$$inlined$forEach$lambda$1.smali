.class final Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/LegalImpl;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

.field final synthetic b:Lcom/samsung/android/app/music/activity/LegalImpl;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;Lcom/samsung/android/app/music/activity/LegalImpl;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;->a:Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 253
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Lcom/samsung/android/app/music/activity/LegalImpl;)Landroid/app/Activity;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;->a:Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 252
    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method
